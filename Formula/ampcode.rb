class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774759630-gab222d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774759630-gab222d/amp-darwin-arm64"
      sha256 "3ac99aad6a8494090ab5c73e8931be0cfe671fd9544b9df5cad4dce2f0a24dc3"
    else
      url "https://static.ampcode.com/cli/0.0.1774759630-gab222d/amp-darwin-x64"
      sha256 "ad54225d83128e3e91b8ed754331be0f3a527f1b3ebf74d515e2b35d98e91f8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774759630-gab222d/amp-linux-arm64"
      sha256 "7e010c3cdf3989fe7d856e0a5c45dac48a727e1974c004a905d75530f6d797ef"
    else
      url "https://static.ampcode.com/cli/0.0.1774759630-gab222d/amp-linux-x64"
      sha256 "cd60af8f77b5fb621ca8e27d9bfb0b791a319c8ff6392d305d8d09f9f4b1e506"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
