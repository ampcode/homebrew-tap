class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778871988-gfebe7f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778871988-gfebe7f/amp-darwin-arm64"
      sha256 "5eef5b4ccf7aa3d8bc6cb00def8abfb8309b64eedfb20b861526753cdab8a290"
    else
      url "https://static.ampcode.com/cli/0.0.1778871988-gfebe7f/amp-darwin-x64"
      sha256 "4d4c00664a98bd6e21d1a59f859445951dc8cd2ec9b449ed4bfdc98c7214d91f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778871988-gfebe7f/amp-linux-arm64"
      sha256 "5e7d99466d9a1aa888fd1022ecdc27e9ddf7dc2a1be447d79aed8c113a88108c"
    else
      url "https://static.ampcode.com/cli/0.0.1778871988-gfebe7f/amp-linux-x64"
      sha256 "564d6bc4f3fc8be0c4957bd6102afe2ad0086296f725c3e4a5bb5f5054c67f8a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
