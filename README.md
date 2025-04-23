# Apex Trigger Framework

This repo contains a reusable, bulk-safe trigger framework for Salesforce Apex development.

## Features

- Single handler per object
- Organized by trigger context
- Extensible for any object
- Promotes clean code

## Structure

- `TriggerHandler.cls`: Abstract base handler
- `AccountTriggerHandler.cls`: Custom logic per object
- `AccountTrigger.trigger`: Lightweight trigger using handler

## How to Use

1. Clone or copy `TriggerHandler.cls`
2. Create a custom handler like `ContactTriggerHandler`
3. Replace logic from raw triggers to the handler

## Author

Maintained by Sunny Patwa
