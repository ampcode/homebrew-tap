class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769560657-gd09636"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769560657-gd09636/amp-darwin-arm64"
      sha256 "1c5aa3fa67b88442f35be7f053499910f105cf0797b130c706c6a75844f82a43"
    else
      url "/0.0.1769560657-gd09636/amp-darwin-x64"
      sha256 "ee49bc9020b87795faf7035cab28da8ebf29a5d503cd118367fa68f704029349"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769560657-gd09636/amp-linux-arm64"
      sha256 "7e9db63bcba2366fc64dffb3090a45b7476abb55f1b8f818ecfb5c482beb2d72"
    else
      url "/0.0.1769560657-gd09636/amp-linux-x64"
      sha256 "49ecefe8994c8e081f3aa4e2afdf6ea8ea5bdcf19254bf5452264a6a1ac201dd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
