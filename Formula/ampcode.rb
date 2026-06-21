class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782007861-g009d15"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782007861-g009d15/amp-darwin-arm64"
      sha256 "3ced6a593e8417ab3e2210ee6e98aa5f20ab72f61fe50f5c1af2ced1399d3c89"
    else
      url "https://static.ampcode.com/cli/0.0.1782007861-g009d15/amp-darwin-x64"
      sha256 "85a62d614bf70461cb9081b933e9acc81363b1ddc31754abde50db03f967bd89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782007861-g009d15/amp-linux-arm64"
      sha256 "7f10c7a9256096767655defa9d9e1435bb6583521eb7d6ca77a4af64b73f1e5c"
    else
      url "https://static.ampcode.com/cli/0.0.1782007861-g009d15/amp-linux-x64"
      sha256 "2e5b5135054ab944d850557595626190ad78202d477b862829a835005e6f6508"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
