#[flutter_rust_bridge::frb(sync)] // Synchronous mode for simplicity of the demo
pub fn rust_calculate(exp: String) -> String {
    format!("rust_calculate exp is {exp}")
}

