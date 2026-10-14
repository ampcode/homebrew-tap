class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791964847-g13f24a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791964847-g13f24a/amp-darwin-arm64"
      sha256 "0368c1eeea7404def8fac67ef8c84053ae8e17975c9e13f8df2247b1865845b1"
    else
      url "https://static.ampcode.com/cli/0.0.1791964847-g13f24a/amp-darwin-x64"
      sha256 "31594b64b638b7fa514ce16f826060b9ebfc295b3617d182c6e1efdc3a11856e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791964847-g13f24a/amp-linux-arm64"
      sha256 "f47acc2c1a553dcb3b9bbe629bae863796238acde3f4d44c740287831e51846b"
    else
      url "https://static.ampcode.com/cli/0.0.1791964847-g13f24a/amp-linux-x64"
      sha256 "3ce98e829fb7b3cb64b87da880f403c84284b4dbd0d23ae484baa32cad520f3c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
