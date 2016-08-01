# Shutdown Smart Policy for [Trailbot](https://trailbot.io)
This [Trailbot Smart Policy](https://github.com/trailbot/client/wiki/Smart-Policies) shuts down the machine.

## Parameters
This policy accepts the following parameters:

| Name   | Description                                                     | Default value | Required |
|--------|-----------------------------------------------------------------|---------------|----------|
| flag   |  The flag used to shutdown the machine (`P`, `r`, `h`)          | P             | false    |
| time   |  The time in minutes before the machine shuts down              | 0             | false    |
