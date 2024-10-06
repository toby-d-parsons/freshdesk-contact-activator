# Freshdesk Contact Activator

## Description

The **Freshdesk Contact Activator** is a terminal-based application designed to simplify the process of sending Freshdesk customer portal activation emails in bulk. By leveraging the Freshdesk API, this tool automates the process of activating existing contacts, saving you time and effort when managing large customer lists.

With a simple setup, you can configure your own Freshdesk instance and API key to send activation emails to multiple contacts with just a few commands.

## Features

- **Bulk Email Activation:** Send activation emails to multiple customers in one go for existing contacts in your Freshdesk instance.
- **Custom Instance & API Key:** Easily configure your own Freshdesk domain and API key for secure communication with the API.
- **Terminal-based:** Run the tool directly from your terminal, no additional GUI needed.

## Prerequisites
- Ruby (ensure you have Ruby installed on your machine, version 2.7 or higher is recommended)
- A Freshdesk account with an API key
- Contact IDs for the Freshdesk contacts that require portal activation

## Installation

### Step 1: Clone the Repository
First, clone this repository to your local machine:
    
```bash
git clone https://github.com/toby-d-parsons/freshdesk-contact-activator.git
```

### Step 2: Navigate to the Project Directory
Once the repository has been cloned, navigate to the project directory:

```bash
cd freshdesk-contact-activator
```

### Step 3: Set Up Your Freshdesk API Key
Create a file named `api.key` in the root of the project and paste your Freshdesk API key into this file. This key will be used for authentication with the Freshdesk API.

_You can find your API key by following the official [Freshdesk guide](https://support.freshdesk.com/support/solutions/articles/215517-how-to-find-your-api-key)._

### Step 4: Configure the Domain for Your Freshdesk Instance
In the `lib/freshdesk_contact_activator.rb file`, update the `DOMAIN` variable to match the domain of your Freshdesk instance. Your domain will typically follow this format:

```
yourdomain.freshdesk.com
```

### Step 5: Add Contact IDs for Activation Emails
In the same `lib/freshdesk_contact_activator.rb file`, locate the `array` variable, which stores the contact IDs of the users you want to send activation emails to. Update this array with the relevant contact IDs:

```ruby
array = [80119490768, 80119490769, 80119490770] # Add your contact IDs here
```

### Step 6: Run the Script
With everything set up, you can now run the script to send activation emails. In your terminal, execute the following command:

```bash
ruby lib/freshdesk_contact_activator.rb
```

### Step 7: Monitor Results
For each successful email sent, a **204 No Content** HTTP status code will be printed in the terminal. This indicates that the request was successful but that the API has no additional content to send back.

In case of any errors, the response code and error message will also be printed, so you can identify and resolve any issues quickly.

## Troubleshooting
### Common Errors:
- **401 Unauthorized:** Ensure that your Freshdesk API key in the api.key file is correct and that you have the proper permissions in your Freshdesk account.
- **404 Not Found:** Verify that the contact IDs you are using exist in your Freshdesk instance and are entered correctly.
- **500 Internal Server Error:** This is likely an issue on the Freshdesk side. Check the [Freshdesk status page](https://updates.freshdesk.com/) for any ongoing issues.
### Log Files:
For debugging purposes, consider logging both successful and unsuccessful API responses to a log file for further analysis.