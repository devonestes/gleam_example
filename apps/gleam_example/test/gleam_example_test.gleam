import gleam_example
import gleam/expect

pub fn hello_world_test() {
  gleam_example.hello_world()
  |> expect.equal(_, "Hello, from gleam_example!")
}
