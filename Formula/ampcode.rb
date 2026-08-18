class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787065120-g6e38c0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787065120-g6e38c0/amp-darwin-arm64"
      sha256 "e05497a61c54413661730f0e3985f78b8a88d5911e8150428d9e53d715069879"
    else
      url "https://static.ampcode.com/cli/0.0.1787065120-g6e38c0/amp-darwin-x64"
      sha256 "2bc789aeab158247fa3385b5d0875cbf170b0d812e4c398f904f7ab9563ad928"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787065120-g6e38c0/amp-linux-arm64"
      sha256 "71338e27b3dd838b3036472cc6de30a82115516be20aa6f9ad27b56fc2e139c9"
    else
      url "https://static.ampcode.com/cli/0.0.1787065120-g6e38c0/amp-linux-x64"
      sha256 "80a9af39cd0459f58937fe219957d81b43cc362f77885f12ac3dd4ea83b5cc32"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
