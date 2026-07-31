class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785515475-g65101d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785515475-g65101d/amp-darwin-arm64"
      sha256 "cbfa7c570bfae51894d58f33d90e549cda384b9bd4d36c8d0e49a6e9a3e32e35"
    else
      url "https://static.ampcode.com/cli/0.0.1785515475-g65101d/amp-darwin-x64"
      sha256 "80489e44bfc00c95d2b92d266ddf87b46a1e4ccb5c944359d07410d43006f66f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785515475-g65101d/amp-linux-arm64"
      sha256 "95bbe9230e8dca316c16636c4fe5e9e4e563513fecceef2b79c23a24689ba521"
    else
      url "https://static.ampcode.com/cli/0.0.1785515475-g65101d/amp-linux-x64"
      sha256 "e523eecffa8a8bfed01b18368f12a171c5751a622d39ac9b5acad0a88c6016b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
