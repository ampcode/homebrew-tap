class ZvelteCheck < Formula
  desc "Fast Svelte diagnostic tool written in Zig"
  homepage "https://github.com/ampcode/zvelte-check"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-aarch64.tar.gz"
      sha256 "aa92ca3434b345eab34278ea55c20787eadb48237203f65a9a1cf2ce5f6aac6b"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-x86_64.tar.gz"
      sha256 "883970b4d40e328d004615b7138823aae90b66dafe03d9c1f45f3b0ad521526d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-aarch64.tar.gz"
      sha256 "ba5628fc3a0c4d886cba7e3d0b3d4554e38587d0922fdcf2461861e3fe5fa507"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-x86_64.tar.gz"
      sha256 "63b3ec28b438750df8a35cb00ab7388f02d7e7d87560a0349d802bc381520f14"
    end
  end

  def install
    bin.install "zvelte-check"
  end

  test do
    assert_match "zvelte-check", shell_output("#{bin}/zvelte-check --help", 2)
  end
end
