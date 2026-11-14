class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794614453-g43b36a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794614453-g43b36a/amp-darwin-arm64"
      sha256 "7f4aed3a2fb9d12e1e459909ee351dd2ab2a4965444db895dc412b5edf58e0d8"
    else
      url "https://static.ampcode.com/cli/0.0.1794614453-g43b36a/amp-darwin-x64"
      sha256 "dc26ba946be274d4340c291c5b0141b33366fb54bee68c076986f4e0c7fff6fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794614453-g43b36a/amp-linux-arm64"
      sha256 "bba32227acc449adf92fba0212fa0ec1272bafa2517f6bde000f842a3be154e9"
    else
      url "https://static.ampcode.com/cli/0.0.1794614453-g43b36a/amp-linux-x64"
      sha256 "7af997e3e9272da09f3d70c2bc45437d08f6256cad3beba8f788776c684f1e9e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
