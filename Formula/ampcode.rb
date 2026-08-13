class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786595533-g5ba330"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786595533-g5ba330/amp-darwin-arm64"
      sha256 "1e978f207666fd53bad927124c42a1677bd5c2b4794035f70342ace2bd8f481c"
    else
      url "https://static.ampcode.com/cli/0.0.1786595533-g5ba330/amp-darwin-x64"
      sha256 "07aa79cd0a8ea13df17652b4c75e63d5a485af66f0d0e31382c1aff0c241994e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786595533-g5ba330/amp-linux-arm64"
      sha256 "a05c14e06acbd3552123d51453456086f26e8870c6767228d999e430e2c0450a"
    else
      url "https://static.ampcode.com/cli/0.0.1786595533-g5ba330/amp-linux-x64"
      sha256 "aac79528bcd9f79cb190e0381b49315e23622e07b76ef81d547dcb9eaafa7cea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
