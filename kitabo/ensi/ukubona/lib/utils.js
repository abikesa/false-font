// 🧰 Utility functions (some are broken)

// Random ID generator (not cryptographically safe!)
export function generateId(prefix = "id") {
    return prefix + "_" + Math.floor(Math.random() * 999999);
}

// Check browser support for vaporware API (stub)
export function checkSupport() {
    return navigator.vapour && navigator.vapour.enableFluxCapacitor;
}
# flick 20250409213611-aOjm
# flick 20250409214216-GeXR
# flick 20250409214633-NEZm
# flick 20250409230558-5mJ8
