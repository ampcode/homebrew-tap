class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791489635-gdf6e24"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791489635-gdf6e24/amp-darwin-arm64"
      sha256 "784cd6ed717fe54040f2316d9b27dfa85a13796f93b8b023fc7f679e56a67748"
    else
      url "https://static.ampcode.com/cli/0.0.1791489635-gdf6e24/amp-darwin-x64"
      sha256 "5966d4a3226837360d914d9e605209da29a4fc64c733f13504ddd3bd7a7fa94f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791489635-gdf6e24/amp-linux-arm64"
      sha256 "6005c38a8bf6979616330850b57cd7eb4fa579e25887f41d8a22be00b16440d4"
    else
      url "https://static.ampcode.com/cli/0.0.1791489635-gdf6e24/amp-linux-x64"
      sha256 "3fb53adc124a63fdbc53a918b0c3eeedb8f3a240191694c7238be4f306527b55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
