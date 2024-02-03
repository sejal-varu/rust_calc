use fend_core::{evaluate, Context};

pub fn rust_calculate(exp: String) -> String {
    let mut context = Context::new();
    let res = evaluate(&exp, &mut context).unwrap();
    format!("{}", res.get_main_result())
}
