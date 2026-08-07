class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786133514-gc956d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786133514-gc956d5/amp-darwin-arm64"
      sha256 "21d33a889fce5a7675fa0f70f6e9cbafd35a3305aafaa5ebc3306601a19b995a"
    else
      url "https://static.ampcode.com/cli/0.0.1786133514-gc956d5/amp-darwin-x64"
      sha256 "39b17d13aacb688602cf3424d16aea8a421bb6586f3784934585c8716c89922c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786133514-gc956d5/amp-linux-arm64"
      sha256 "0c0e0e2d3cb670aeaa08bc5ef4856b06570630997ec8e6593dfb84c97f080601"
    else
      url "https://static.ampcode.com/cli/0.0.1786133514-gc956d5/amp-linux-x64"
      sha256 "c85bec618f79de7c34d1651fd844e2c22979efe5ea90df624d621c90832d8d35"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
