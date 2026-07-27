class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785164324-gd1fcef"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785164324-gd1fcef/amp-darwin-arm64"
      sha256 "993a3bd5c4158e0de59502489d74efe7f382e705b557cfb6a276f16cb74d01bd"
    else
      url "https://static.ampcode.com/cli/0.0.1785164324-gd1fcef/amp-darwin-x64"
      sha256 "d9ac9da0ffe9702887ad01ca607461b55a8406a7fc034086573b3c3dd1301d0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785164324-gd1fcef/amp-linux-arm64"
      sha256 "abc7eced9309230b07d2b013ce44787494d97ab41e30f29b7c596bab4a9eb3ec"
    else
      url "https://static.ampcode.com/cli/0.0.1785164324-gd1fcef/amp-linux-x64"
      sha256 "a8b270a363de9cd4b73c73c9bfe65f33904586084db35404a785564864be5f8a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
