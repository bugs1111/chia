URL="https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=988bbd9e-cf66-401d-88cb-4d5e6be50b5e"

curl $URL -H 'Content-Type: application/json' \
   -d '{
        "msgtype": "text",
        "text": {
            "content": "test msg"
        }
   }'
