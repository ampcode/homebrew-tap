class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789084911-gd475de"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789084911-gd475de/amp-darwin-arm64"
      sha256 "dea9d9919af3565261f5138db5c3fe6e998f5d2ace7cf390acaf9c6c91ca64f6"
    else
      url "https://static.ampcode.com/cli/0.0.1789084911-gd475de/amp-darwin-x64"
      sha256 "76a21ad65fb7ac06d247c6ef5b2cdddb44454f9c4a3dd378c216a3815bbe2f32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789084911-gd475de/amp-linux-arm64"
      sha256 "e87b552311533f9af793fae52b2c6288f6d386ad88f2b9da3470fe811fb7a245"
    else
      url "https://static.ampcode.com/cli/0.0.1789084911-gd475de/amp-linux-x64"
      sha256 "19c3b1e6d895fb69ce342c9e1519c78fc9b8184ab297fabd4cebd57aed55b083"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
