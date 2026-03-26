class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774529752-g94f44d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774529752-g94f44d/amp-darwin-arm64"
      sha256 "9c3103e6a7393e94352eeaf0b675ce441eb928308456d1d0fedf645eb13d17c2"
    else
      url "https://static.ampcode.com/cli/0.0.1774529752-g94f44d/amp-darwin-x64"
      sha256 "cf195a60782dba636370242d955385a14c2e360abac80f3dfeaab2b3f762d4a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774529752-g94f44d/amp-linux-arm64"
      sha256 "4023da3ef404e3f512500b65f9b76a771dcad56d6404590765e1f1f93372bdce"
    else
      url "https://static.ampcode.com/cli/0.0.1774529752-g94f44d/amp-linux-x64"
      sha256 "5183771c3691a7b5f142424332bf7616be0c102ae98b58a61e95248c8917abe7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
