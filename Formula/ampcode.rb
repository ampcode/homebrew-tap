class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791619249-g722a12"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791619249-g722a12/amp-darwin-arm64"
      sha256 "b6075b61b43dc27d913944e387b7c8f7b83bad1ea84a8e56fc2c90bba21dddbb"
    else
      url "https://static.ampcode.com/cli/0.0.1791619249-g722a12/amp-darwin-x64"
      sha256 "4efe44eb227fcd02bbe7ae2bc34652fddf8da1fb969feb0d9b30eafcb02df434"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791619249-g722a12/amp-linux-arm64"
      sha256 "e17f14c2fe497ac276e56f7ed7356f9ef68d163457d28986a46826e7d3fc2196"
    else
      url "https://static.ampcode.com/cli/0.0.1791619249-g722a12/amp-linux-x64"
      sha256 "4979f93774d9e9565f08d268806b6f01ec644f3e5befb472e2c790b203221f4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
