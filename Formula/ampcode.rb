class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789185638-ga5a85f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789185638-ga5a85f/amp-darwin-arm64"
      sha256 "0a65de6f3007862a42504242eba30718c19f4b19953865497f19663e551a729f"
    else
      url "https://static.ampcode.com/cli/0.0.1789185638-ga5a85f/amp-darwin-x64"
      sha256 "e9c68c83687bda27808e5e69a21511439012cd94776d40ea9a2cea706a2b4135"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789185638-ga5a85f/amp-linux-arm64"
      sha256 "c1a5394df7c02f79930ab11a5a5dbf6f227b9f38288668363e8d5331058a6bf5"
    else
      url "https://static.ampcode.com/cli/0.0.1789185638-ga5a85f/amp-linux-x64"
      sha256 "6062da6af696053597b26ecf4ba1868c34851d21c3fd6b28003a5c5a2c0bcffa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
