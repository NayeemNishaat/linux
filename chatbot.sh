# Parsing JSON with jq package!

echo -n "Question: "
read Question

curl https://api.openai.com/v1/engines/text-davinci-002/completions \
	-H "Content-Type: application/json" \
	-H "Authorization: Bearer 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" \
	-d '{
	"prompt": "'"$Question"'",
	"temperature": 0.5,
	"max_tokens": 60,
	"top_p": 0.3,
	"frequency_penalty": 0.5,
	"presence_penalty": 0.0
}' | jq '.choices[].text' > res.txt

sed 's/\\n/ /g' res.txt

#  | jq '.choices[].text'
# | jq .