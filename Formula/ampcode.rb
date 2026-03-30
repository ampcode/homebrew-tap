class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774866438-g7cb400"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774866438-g7cb400/amp-darwin-arm64"
      sha256 "497700e8350fa92babd0171ba65c836070ffe6bcda5298880211eb583408be48"
    else
      url "https://static.ampcode.com/cli/0.0.1774866438-g7cb400/amp-darwin-x64"
      sha256 "ccaa98c97127ec2632026f1dcb17c30d8f67cd17a37af275bf110f6fa4ae7583"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774866438-g7cb400/amp-linux-arm64"
      sha256 "35da7ce67441a376f571a346365c08d8ffea560af29caaf875a651a05a33ebac"
    else
      url "https://static.ampcode.com/cli/0.0.1774866438-g7cb400/amp-linux-x64"
      sha256 "9adc2a8556d3f8de9037a0fe7b0c299c39290ddbe4a0bf7d6a540845345d837c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
