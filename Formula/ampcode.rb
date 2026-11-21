class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795291233-g08aa82"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795291233-g08aa82/amp-darwin-arm64"
      sha256 "64131b7064d42930d4f602d9659cc1fea7aadb0ed923d44a294768c130ac7c2c"
    else
      url "https://static.ampcode.com/cli/0.0.1795291233-g08aa82/amp-darwin-x64"
      sha256 "a67b93a56ba5cdf7cf3cf831a76d808b17771998f8c11216ebdc041ce89520ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795291233-g08aa82/amp-linux-arm64"
      sha256 "d70273bd6966ce30b0886291422b85af9c78a79a5a1c256b83a71227a7ac5fce"
    else
      url "https://static.ampcode.com/cli/0.0.1795291233-g08aa82/amp-linux-x64"
      sha256 "cdb53f54c5c2d6027de59a52170bc3b87e53ac142c19756df5000dcc61ef27e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
