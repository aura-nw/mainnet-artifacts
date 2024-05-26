import json
from datetime import datetime

def extract_expiration(allowance):
    allowance_type = allowance["@type"]
    expiration = None

    if allowance_type == "/cosmos.feegrant.v1beta1.BasicAllowance":
        expiration = allowance.get("expiration")
    elif allowance_type == "/cosmos.feegrant.v1beta1.PeriodicAllowance":
        expiration = allowance["basic"]["expiration"]
    elif allowance_type == "/cosmos.feegrant.v1beta1.AllowedContractAllowance":
        expiration = extract_expiration(allowance["allowance"])
    elif allowance_type == "/cosmos.feegrant.v1beta1.AllowedMsgAllowance":
        expiration = extract_expiration(allowance["allowance"])

    return expiration

def remove_expired_grants(json_data, timestamp):
    grants = json_data["app_state"]["feegrant"]["allowances"]
    updated_grants = []

    for grant in grants:
        expiration = extract_expiration(grant["allowance"])

        if expiration is None or (expiration and datetime.fromisoformat(expiration[:-1]) > datetime.fromisoformat(timestamp[:-1])):
            updated_grants.append(grant)

    json_data["app_state"]["feegrant"]["allowances"] = updated_grants

    return json_data

def main():
    # Example timestamp in the same format as expiration (replace with your timestamp)
    timestamp = "2024-05-31T15:00:00Z"

    # Path to your JSON file
    json_file_path = "aura_6322-2.json"

    # Read JSON data from file
    with open(json_file_path, 'r') as f:
        json_data = json.load(f)

    # Remove expired grants
    updated_json_structure = remove_expired_grants(json_data, timestamp)

    # Path to write the updated JSON file
    updated_json_file_path = "aura_6322-2-genesis.json"

    # Write updated JSON data to file
    with open(updated_json_file_path, 'w') as f:
        json.dump(updated_json_structure, f, indent=4)

    print("Updated JSON structure written to:", updated_json_file_path)

if __name__ == "__main__":
    main()