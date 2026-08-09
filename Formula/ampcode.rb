class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786277171-ge94f25"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786277171-ge94f25/amp-darwin-arm64"
      sha256 "290d4cb912655ed07024f0d0f42c85cd6e3176b4e7878ebc66df25b3fe6ebe6f"
    else
      url "https://static.ampcode.com/cli/0.0.1786277171-ge94f25/amp-darwin-x64"
      sha256 "5393d67c4d7e99cc628313bece67893d4a85dbd6408a6a32f30074242dd48cdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786277171-ge94f25/amp-linux-arm64"
      sha256 "7f5b6b464b198a9d261330ac61c3832705f915e8085b01b0ccc63a0cd8390b13"
    else
      url "https://static.ampcode.com/cli/0.0.1786277171-ge94f25/amp-linux-x64"
      sha256 "c0041e1681f4aadb6e45c71814f5b517812ea69c36aff65deb4650342e203852"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
