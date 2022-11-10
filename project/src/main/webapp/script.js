export default [
	{
		"locale": "ko",
		"title": {
			"ko": "맞춤형 캠핑 추천! "
		},
		"logoPosition": "right",
		"completedHtml": "<h3>Thank you for completing the survey</h3>",
		"pages": [
			{
				"name": "Q1_age",
				"elements": [
					{
						"type": "radiogroup",
						"name": "question1",
						"title": {
							"ko": "연령대가 어떻게 되세요? "
						},
						"isRequired": true,
						"choices": [
							"20대",
							"30대",
							"40대"
						]
					}
				],
				"title": {
					"ko": "Question1"
				}
			},
			{
				"name": "Q2_view",
				"elements": [
					{
						"type": "imagepicker",
						"name": "view",
						"startWithNewLine": false,
						"title": "어떤 뷰를 원하시나요? ",
						"description": "2개를 선택해주세요",
						"isRequired": true,
						"showCommentArea": true,
						"choices": [
							{
								"value": "mountain",
								"text": "산",
								"image": "./images/산.png"
							},
							{
								"value": "ocean",
								"text": "바다",
								"imageLink": "./images/바다.png"
							},
							{
								"value": " countryside",
								"text": "농촌",
								"imageLink": "./images/농촌.png"
							},
							{
								"value": "city",
								"text": "도심",
								"imageLink": "./images/도심.png"
							}
						],
						"showLabel": true,
						"multiSelect": true
					}
				],
				"title": {
					"ko": "Question2"
				}
			},
			{
				"name": "Q3_car_glam",
				"elements": [
					{
						"type": "imagepicker",
						"name": "car_glam",
						"title": "카라반? 글램핑? ",
						"isRequired": true,
						"choices": [
							{
								"value": "caravan",
								"imageLink": "./images/카라반.jpg"
							},
							{
								"value": "glamping",
								"imageLink": "./images/글램핑.jpg"
							}
						],
						"imageFit": "cover"
					}
				],
				"title": {
					"ko": "Question3"
				}
			},
			{
				"name": "Q4_with",
				"elements": [
					{
						"type": "dropdown",
						"name": "companion",
						"title": "누구와 함께 떠나나요? ",
						"isRequired": true,
						"choices": [
							"가족",
							"친구",
							"연인",
							"반려동물",
							"혼자",
							"회사동료"
						]
					}
				],
				"title": {
					"ko": "Question3"
				}
			},
			{
				"name": "Q5_concept",
				"elements": [
					{
						"type": "checkbox",
						"name": "question3",
						"title": {
							"ko": "이번 여행의 컨셉 ? "
						},
						"isRequired": true,
						"choices": [
							"#힐링",
							"#먹방",
							"#사진",
							"#핫플"
						]
					}
				],
				"title": {
					"ko": "Question5"
				}
			},
			{
				"name": "Q6_infor",
				"elements": [
					{
						"type": "tagbox",
						"name": "question2",
						"title": {
							"ko": "어떤 정보를 주로 알고싶나요? "
						},
						"isRequired": true,
						"choices": [
							"꿀팁",
							"스팟 정보",
							"장비 정보",
							"캠핑 음식",
							"편의성"
						]
					}
				],
				"title": {
					"ko": "Question6"
				}
			},
			{
				"name": "Q7_계절",
				"elements": [
					{
						"type": "imagepicker",
						"name": "question4",
						"title": {
							"ko": "어느 계절에 떠나나요 ? "
						},
						"isRequired": true,
						"choices": [
							{
								"value": "spring",
								"text": {
									"ko": "봄"
								},
								"imageLink": "./images/봄.jpg"
							},
							{
								"value": "summer",
								"text": {
									"ko": "여름"
								},
								"imageLink": "./images/여름.jpg"
							},
							{
								"value": "fall",
								"text": {
									"ko": "가을"
								},
								"imageLink": "./images/가을.jpg"
							},
							{
								"value": "winter",
								"text": {
									"ko": "겨울"
								},
								"imageLink": "./images/겨울.jpg"
							}
						],
						"imageFit": "none",
						"minImageWidth": 180,
						"maxImageWidth": 350
					}
				],
				"title": {
					"ko": "Question7"
				}
			}
		],
		"showQuestionNumbers": "off"
	}
]

