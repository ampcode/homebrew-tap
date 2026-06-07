class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780827515-ga4daec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780827515-ga4daec/amp-darwin-arm64"
      sha256 "e1f1dd760a721d529e3bdc5465c0280269d4665b835eb1193db725769ca0c055"
    else
      url "https://static.ampcode.com/cli/0.0.1780827515-ga4daec/amp-darwin-x64"
      sha256 "4f53cba4d81ab2984a27d006e291355e4e21020c17f6df3531d241ea50087aff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780827515-ga4daec/amp-linux-arm64"
      sha256 "5950986b22ceb5dd9edec9a344b4023191619ecaa8b3f35d3b04be688c235dcc"
    else
      url "https://static.ampcode.com/cli/0.0.1780827515-ga4daec/amp-linux-x64"
      sha256 "0526a056122e6072ca2de30f33279c98c0a21ca352a7ebbe8311c8bdd6e1ece9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
