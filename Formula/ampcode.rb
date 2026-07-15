class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784091630-gf43d5c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784091630-gf43d5c/amp-darwin-arm64"
      sha256 "c2f26f2577354cf57b40fd681a8eb855b431e68a85034b392c5c69811bd74eea"
    else
      url "https://static.ampcode.com/cli/0.0.1784091630-gf43d5c/amp-darwin-x64"
      sha256 "68106f94a93e266d06d2259c14ea39b94585c156b6539d958c456e5ccc326b64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784091630-gf43d5c/amp-linux-arm64"
      sha256 "180b43f0fd2b62fd67384cad9bba576a1d43fc517db5a89d2d2d25d1d9c046a8"
    else
      url "https://static.ampcode.com/cli/0.0.1784091630-gf43d5c/amp-linux-x64"
      sha256 "3448b2f9cd714d358886c90dd466f5499a7923503543afd107cbc59d4cb887b2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
