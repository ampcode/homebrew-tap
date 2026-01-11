class ZvelteCheck < Formula
  desc "Fast Svelte diagnostic tool written in Zig"
  homepage "https://github.com/ampcode/zvelte-check"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-aarch64.tar.gz"
      sha256 "f070ab1dbf64ee863f6e953490b0ad29f459f3fe62d5c96e3f8d5712d03bd948"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-x86_64.tar.gz"
      sha256 "2889f4bc8a8197c947b5eef5fc26a63c573751d0f59bd9d8904ec8fa93bea99a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-aarch64.tar.gz"
      sha256 "53ba3dd438ca5f09bd9964bb4a5c0e8b7ead46798265b33a912a6c5383df4e09"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-x86_64.tar.gz"
      sha256 "60b58029a05c163aba778b20f1b5c5c1fbc9bc01fe856751612890e1511d1e5a"
    end
  end

  def install
    bin.install "zvelte-check"
  end

  test do
    assert_match "zvelte-check", shell_output("#{bin}/zvelte-check --help", 2)
  end
end
