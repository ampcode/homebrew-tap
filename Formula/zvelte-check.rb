class ZvelteCheck < Formula
  desc "Fast Svelte diagnostic tool written in Zig"
  homepage "https://github.com/ampcode/zvelte-check"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-aarch64.tar.gz"
      sha256 "bebdba45f87fb34b371925c4e218fd8e390deaf541370223a20dc3b8fb271ee0"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-darwin-x86_64.tar.gz"
      sha256 "0e29e51790c834b7b626f0438ad0fc4a468eb5e55cead2b175ae7fc02b87290a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-aarch64.tar.gz"
      sha256 "99c4d98c3badb1d56f3343ef7dbbbc3c759c13dcefe39e338251ca9b47c229fc"
    end
    on_intel do
      url "https://github.com/ampcode/zvelte-check/releases/download/v#{version}/zvelte-check-linux-x86_64.tar.gz"
      sha256 "e96edd0380e6aab806f74a0b1b2aa61e7d6f6a392339a098fefc3188c4d84fd7"
    end
  end

  def install
    bin.install "zvelte-check"
  end

  test do
    assert_match "zvelte-check", shell_output("#{bin}/zvelte-check --help", 2)
  end
end
