class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790107230-g213fd2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790107230-g213fd2/amp-darwin-arm64"
      sha256 "7a5e036752fbfe5727c53e7c14cf728f868b8e8f372fcd44935014f517a7fb9a"
    else
      url "https://static.ampcode.com/cli/0.0.1790107230-g213fd2/amp-darwin-x64"
      sha256 "2f86287fce1a6ac9c808d0beed66e4d64b685308283a73feb97abb0982fc72c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790107230-g213fd2/amp-linux-arm64"
      sha256 "b9891dc1104b5e16448f4a0ede2a4acf80aa9b1501830ad278e4dd212b28a954"
    else
      url "https://static.ampcode.com/cli/0.0.1790107230-g213fd2/amp-linux-x64"
      sha256 "4618be42656c868ff4b3f0c9c6515cbf9d93979d8795360cf929705c6770c92c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
