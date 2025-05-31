# Turn on the built-in web UI
ui = true

# ❶ Listener – TLS disabled for the PoC; *enable TLS before going to prod*
listener "tcp" {
  address     = "0.0.0.0:7700"
  tls_disable = "true"
}

# ❷ Integrated Storage (Raft) for durability
storage "raft" {
  path    = "/vault/data"
  node_id = "vault-node-1"
}

# ❸ Enable file audit log (goes to the mounted ./logs folder)
audit "file" {
  file_path = "/vault/logs/audit.log"
}

# Optional: reduce log noise
log_level = "info"
