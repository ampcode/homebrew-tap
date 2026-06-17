class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781707366-gfdba09"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781707366-gfdba09/amp-darwin-arm64"
      sha256 "339fbcd8d9300e188c1020c947f4762e7fcd71a1ce18d467060091bfbeee5f90"
    else
      url "https://static.ampcode.com/cli/0.0.1781707366-gfdba09/amp-darwin-x64"
      sha256 "497636d1b940dbc74b8c24ec2044a5940058a4d7e3cdb0255e5eae778e27a05a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781707366-gfdba09/amp-linux-arm64"
      sha256 "9ba80024adba760b267850ef3525bfec40e49c6c5caef1ab1409b7fe74092d0a"
    else
      url "https://static.ampcode.com/cli/0.0.1781707366-gfdba09/amp-linux-x64"
      sha256 "7fdfa243f6f64dcd21c2b6be1820e84c516d3a54e6950ae8e22b2eac7dab841a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
