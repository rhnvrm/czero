import sys

import requests
from requests.structures import CaseInsensitiveDict

for line in sys.stdin:
    if "/tochat" not in line:
        continue

    url = "REPLACEME"

    headers = CaseInsensitiveDict()
    headers["Content-Type"] = "application/json"

    print(line)
    ls = line.split("/tochat")
    print(ls)
    message = ls[1]
    out = message
    print("out", out)
    data = '{"text": "'+out+'"}'

    print(url, data)
    resp = requests.post(url, headers=headers, data=data)

    print(resp.status_code)

