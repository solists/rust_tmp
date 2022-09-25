// @generated automatically by Diesel CLI.

diesel::table! {
    persons (id) {
        id -> Int8,
        name -> Nullable<Varchar>,
        city -> Nullable<Varchar>,
    }
}
