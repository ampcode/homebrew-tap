class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789344113-g6e4515"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789344113-g6e4515/amp-darwin-arm64"
      sha256 "8bfc8040be82c539b8bf28e89ed89582b584f6aa7509218a2de65610e6614548"
    else
      url "https://static.ampcode.com/cli/0.0.1789344113-g6e4515/amp-darwin-x64"
      sha256 "3e88f3504bd957a9b28d140f82cd4948dff6cf24d2866707e025573008b411a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789344113-g6e4515/amp-linux-arm64"
      sha256 "eb04c49fafb341c65de1c6f234782df3537b2e2d238112181b5ddf95901a1331"
    else
      url "https://static.ampcode.com/cli/0.0.1789344113-g6e4515/amp-linux-x64"
      sha256 "8a697d46b1efb9deeb90d1f653be523e96a274a2afbf75aa611f48cd10677c6e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
