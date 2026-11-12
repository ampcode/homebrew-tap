class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794456033-gb2ff22"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794456033-gb2ff22/amp-darwin-arm64"
      sha256 "5be17fb9fd131ac8a196c5c06345dbc4b5fe36e86ab568e90015c69c1a3bd54a"
    else
      url "https://static.ampcode.com/cli/0.0.1794456033-gb2ff22/amp-darwin-x64"
      sha256 "5bbf31378cbffaab6f3d302ff3d8094da9a637f1018d439c8e6907764b0be67f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794456033-gb2ff22/amp-linux-arm64"
      sha256 "f11ba3e81b69089238de215509e0ff770a7188509efb19efe0623099f77c8be9"
    else
      url "https://static.ampcode.com/cli/0.0.1794456033-gb2ff22/amp-linux-x64"
      sha256 "8e7d7f19cb2321bba7821fe8d1869cbd071be403dffdb47875dfc23dd0487db2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
