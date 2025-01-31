docker run -d \
-e "KONG_ROLE=data_plane" \
-e "KONG_DATABASE=off" \
-e "KONG_VITALS=off" \
-e "KONG_CLUSTER_MTLS=pki" \
-e "KONG_CLUSTER_CONTROL_PLANE=1d4dfcaec5.eu.cp0.konghq.com:443" \
-e "KONG_CLUSTER_SERVER_NAME=1d4dfcaec5.eu.cp0.konghq.com" \
-e "KONG_CLUSTER_TELEMETRY_ENDPOINT=1d4dfcaec5.eu.tp0.konghq.com:443" \
-e "KONG_CLUSTER_TELEMETRY_SERVER_NAME=1d4dfcaec5.eu.tp0.konghq.com" \
-e "KONG_CLUSTER_CERT=-----BEGIN CERTIFICATE-----
MIICCzCCAbKgAwIBAgIBATAKBggqhkjOPQQDBDA0MTIwCQYDVQQGEwJFVTAlBgNV
BAMeHgBrAG8AbgBuAGUAYwB0AC0AZABlAGYAYQB1AGwAdDAeFw0yNDEwMjMwOTEy
NThaFw0zNDEwMjMwOTEyNThaMDQxMjAJBgNVBAYTAkVVMCUGA1UEAx4eAGsAbwBu
AG4AZQBjAHQALQBkAGUAZgBhAHUAbAB0MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcD
QgAEwmOW/lEJwtEa16+mHA4s6KQzw4qfxVRSgSvZOGJqaOYcwtavYFVul5hA7Z9o
HUO6FE1lHstgX4YJcf8wBfjplKOBtDCBsTASBgNVHRMBAf8ECDAGAQH/AgEDMAsG
A1UdDwQEAwIABjAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwFwYJKwYB
BAGCNxQCBAoMCGNlcnRUeXBlMCMGCSsGAQQBgjcVAgQWBBQBAQEBAQEBAQEBAQEB
AQEBAQEBATAcBgkrBgEEAYI3FQcEDzANBgUpAQEBAQIBCgIBFDATBgkrBgEEAYI3
FQEEBgIEABQACjAKBggqhkjOPQQDBANHADBEAiAiR218wCjEXtONQVG1Nonp8U0J
2iSm90R1zliUNfaa4gIgA2GSBIifnqaXTU+M71Z2tHFAu6gK/l9sbXjRpks/lp0=
-----END CERTIFICATE-----" \
-e "KONG_CLUSTER_CERT_KEY=-----BEGIN PRIVATE KEY-----
MIGTAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBHkwdwIBAQQgz1sTRHAQ9ftlxkfu
H8u253KnH/kKAsKRdfKNjLeOpO+gCgYIKoZIzj0DAQehRANCAATCY5b+UQnC0RrX
r6YcDizopDPDip/FVFKBK9k4Ympo5hzC1q9gVW6XmEDtn2gdQ7oUTWUey2Bfhglx
/zAF+OmU
-----END PRIVATE KEY-----" \
-e "KONG_LUA_SSL_TRUSTED_CERTIFICATE=system" \
-e "KONG_KONNECT_MODE=on" \
-p 9000:8000 \
-p 9443:8443 \
kong/kong-gateway:3.8.0.0
