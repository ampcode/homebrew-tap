class ZvelteCheck < Formula
  desc "Fast Svelte diagnostic tool written in Zig"
  homepage "https://github.com/ampcode/zvelte-check"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-aarch64.tar.gz"
      sha256 "72c73890b328ca1638dc51b9eda9439169adf053b17e10ded94c13b9a27de423"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-x86_64.tar.gz"
      sha256 "28670f6bfd19a18142fb0dd5466e5f6c27b3348cebf9cb99218b374592f20662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-aarch64.tar.gz"
      sha256 "05a2661648952ba12b2da618242698c3065d2db375340cb605288a38f59c4105"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-x86_64.tar.gz"
      sha256 "f3326fe48a0a2bc056b16ce424abd705ca7864d3632fd8f02ace1ea8ecfc8b9b"
    end
  end

  def install
    bin.install "zvelte-check"
  end

  test do
    assert_match "zvelte-check", shell_output("#{bin}/zvelte-check --help", 2)
  end
end
