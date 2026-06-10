@echo off
set "WEBHOOK_URL=https://discord.com/api/webhooks/1514063074959687750/YGOPXhf0Pq44lHdbtAJ5MZDJGsZJTcnb7RQUbqH3-laFn9w2SuK19IbPf24w03DyRU5u"
set "MESSAGE=тест"

powershell -Command "Invoke-RestMethod -Uri '%WEBHOOK_URL%' -Method Post -Body (@{content='%MESSAGE%'} | ConvertTo-Json) -ContentType 'application/json'"

echo Сообщение отправлено.
pause