class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795593651-g62ad54"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795593651-g62ad54/amp-darwin-arm64"
      sha256 "9b1b87666382b679844df0a6b5fd5f0dc9e2a35c03963c158aaa6abf2de38014"
    else
      url "https://static.ampcode.com/cli/0.0.1795593651-g62ad54/amp-darwin-x64"
      sha256 "72f0591d61e904762f9ac2802b37c1d276c2daf0773fb20af9560062279dff67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795593651-g62ad54/amp-linux-arm64"
      sha256 "46e9f0d32c9334ff51fe0ae61350c7c09d4f7d2da115fba8d5f1fb891916ba99"
    else
      url "https://static.ampcode.com/cli/0.0.1795593651-g62ad54/amp-linux-x64"
      sha256 "0cbf699c76e0aace99e8d03eb53544105191c589944c720dadcc234db3959c1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
