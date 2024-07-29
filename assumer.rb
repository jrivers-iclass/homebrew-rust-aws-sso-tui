class Assumer < Formula
    desc "Simple terminal UI for AWS SSO"
    homepage "https://github.com/jrivers-iclass/rust-aws-sso-tui"
    url "https://github.com/jrivers-iclass/rust-aws-sso-tui.git", tag: "1.0.3"
    license "MIT"
    head "https://github.com/jrivers-iclass/rust-aws-sso-tui.git", branch: "main"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    def post_install
      ohai "Binary file has been installed as: assumer"
    end
  
    test do
      system "false"
    end
  end
