class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794758429-g24ed8c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794758429-g24ed8c/amp-darwin-arm64"
      sha256 "685c4de4051268bfce986ac46839638869a913baec8041276eb6a264af27e6a4"
    else
      url "https://static.ampcode.com/cli/0.0.1794758429-g24ed8c/amp-darwin-x64"
      sha256 "39c869019a8220b0e0cec4dd77eee24624606cc2d10d9a7c0b5c031225de87f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794758429-g24ed8c/amp-linux-arm64"
      sha256 "c8c0d61e3c9a22a86abaa76832ac2bc17ff4a8bba24fea885328b7d6cfc6fcaa"
    else
      url "https://static.ampcode.com/cli/0.0.1794758429-g24ed8c/amp-linux-x64"
      sha256 "30a2710f9bcb816e904cbcd50b30f52d9e2af20f26c805b084b0e3b53e926456"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
