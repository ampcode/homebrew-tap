class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776780608-g8b5d8c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776780608-g8b5d8c/amp-darwin-arm64"
      sha256 "8d05c231801af83bb20f57cc2987b2537725371b49c884b39a487d34d36fd5e6"
    else
      url "https://static.ampcode.com/cli/0.0.1776780608-g8b5d8c/amp-darwin-x64"
      sha256 "e22a850beb70e49168ef878a7c6b09bd49a4d57d33dedaf820fc16dd1dc6e209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776780608-g8b5d8c/amp-linux-arm64"
      sha256 "a74276328c5c22e64330f8ddb86be652bd9efff365ab6e0bb39dd44fb7e77571"
    else
      url "https://static.ampcode.com/cli/0.0.1776780608-g8b5d8c/amp-linux-x64"
      sha256 "34477c58a33e757fcec81dd1ee3e74ffa796105f87468651384d7a55d3566992"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
