const url = process.env.N8N_HEALTH_URL || "https://n8n-adam-run.onrender.com/healthz";

fetch(url)
  .then((res) => {
    console.log(`Keep-alive ping: ${res.status}`);
    process.exit(res.ok ? 0 : 1);
  })
  .catch((err) => {
    console.error("Keep-alive ping failed:", err.message);
    process.exit(1);
  });
