class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776255195-g3ec23f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776255195-g3ec23f/amp-darwin-arm64"
      sha256 "f9c3532a0019e8f604c86c64c1c4c92f05f8fd1797c72fea37104f46bcaa4ac9"
    else
      url "https://static.ampcode.com/cli/0.0.1776255195-g3ec23f/amp-darwin-x64"
      sha256 "aa1d4c33acd38ad928b3af14ce60959691ba4ea4bba3d9e9bb7a0b3e386c97f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776255195-g3ec23f/amp-linux-arm64"
      sha256 "b61628dbf5164fd256ab1830cc31b0744d4c4d681d61356187a59b643beae078"
    else
      url "https://static.ampcode.com/cli/0.0.1776255195-g3ec23f/amp-linux-x64"
      sha256 "1a679b1f51c16aa3e169c0ffd09d7980dd2ff5fb2be00445f7be99d66b1fd28a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
