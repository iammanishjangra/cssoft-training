# DNS & Related Records - Complete Overview

## DNS

DNS stands for Domain Name Server. DNS like a Phonebook on Internet. When we enter Any domain like www.google.com, then DNS Change Domain Name into IP Address.
We already binds domain with specific ip address.

## How DNS Works?
	1. Firstly we entered www.google.com in Browser Addresss bar.
	2. Browser send the Request to DNS Resolver
	3. Then DNS resolver ask to the main Root Server.
	4. Root Server ----> TLD (Top-Level Domain) Server (.com)
	5. TLD Server tell about Authoritative Name Server.
	6. Authoritative Server find and gives final IP Address.
	7. After that Browser load website.

## Why We Use DNS?
	1. IP Address not stored in human memory for long time, so we use Domainn name for human readibility.
	2. User not Interact with IP Address.
	3. Email Routing
	4. Manage Subdomains like (docs.manishjangra.dev)
	5. Security

## DNS Benefits
	1. Easy Access
	2. Scalable
	3. Centralized Control
	4. Fast Browsing

# Subdomain

Subdomain is a part of Main Domain.

### For Example
	manishjangra.dev --> Main Domain
	docs.manishjangra.dev --> Subdomain
	blogs.manishjangra.dev --> Subdomain

We make multiple subdomain of any main domain using CNAME DNS Record.

## Benefits of Subdomain
	1. Better Organization
	2. Independent Hosting Possible
	3. SEO Control
	4. Security Separation

# DNS Records

DNS records are simple text files, often thought of as an internet phonebook, that live on specialized servers. They map human-readable domain names (like example.com) to computer-friendly IP addresses (like 192.0.2.1), telling your browser where to find a website, where to send email, and how to handle domain requests. 

## Name Server (NS Record)

NS records told about which Authoritative DNS hand Server domain.

For Example: 
	manishjangra.dev --> ns1.hosting.com
	manishjangra.dev --> ns2.hosting.com

Used for Transfer DNS Control.

# Mail Server (MX Record)

MX Records used for Mail Server, this record decide where our email Deliver or not.

Set for Mail Server
Spam Filtering Control

# TXT Records

Txt Records Store Text-Based Information for Verification and Authentications.
Mostly used for Domain Verifications, Google Search Console, Analytics, Email etc verifications

# Why Use TXT
	1. Email Authentication
	2. Domain Verification
	3. Improve Security


