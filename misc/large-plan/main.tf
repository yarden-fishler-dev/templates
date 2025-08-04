locals {
  # Create a large string by nesting ranges
  large_content = join("", flatten([
    for i in range(200) : [
      for j in range(100) : "Line ${i * 100 + j}: This is substantial content to make the plan larger. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Additional text to increase size significantly.\n"
    ]
  ]))
}

resource "local_file" "large_files" {
  count    = 100
  filename = "${path.module}/large_file_${count.index}.txt"
  content  = "${local.large_content}_file_${count.index}"
}