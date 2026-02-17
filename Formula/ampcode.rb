class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771342247-g478369"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771342247-g478369/amp-darwin-arm64"
      sha256 "a415daba6cd5a8b97c638cb376273fae801f4cc248431240e80dd2af194db52c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771342247-g478369/amp-darwin-x64"
      sha256 "488839a4ca53e8ddba41b50b3f04d4fa7ed98407ff411bb5d51e7c035cf20140"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771342247-g478369/amp-linux-arm64"
      sha256 "55138bd680619caf5b8a8241705fd919286fa79b571f0dc5d7b66b561e34138c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771342247-g478369/amp-linux-x64"
      sha256 "9e231fa00b367af384136985bc803efd63d40be53bdef1446bbe45a172879404"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
