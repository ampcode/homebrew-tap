class ZvelteCheck < Formula
  desc "Fast Svelte diagnostic tool written in Zig"
  homepage "https://github.com/ampcode/zvelte-check"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-aarch64.tar.gz"
      sha256 "ac954b13f8de6eb84e81f3239a7fa6f32b7003dc8049036809a11d77f1c95ed2"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-x86_64.tar.gz"
      sha256 "1fafc0bda81fde958834bb68a51f60a836cc31aef64229e466a8b9ddfa20f113"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-aarch64.tar.gz"
      sha256 "ce8f26df417d540780158fd0e23ef96137a856d9fd86e976aa79f09424cf541f"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-x86_64.tar.gz"
      sha256 "311837b9cac8581e32a31dcefd979b56836c5a190c8d1580f85fca3cb97fe880"
    end
  end

  def install
    bin.install "zvelte-check"
  end

  test do
    assert_match "zvelte-check", shell_output("#{bin}/zvelte-check --help", 2)
  end
end
