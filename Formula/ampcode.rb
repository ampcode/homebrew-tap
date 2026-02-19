class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771459497-g2ad251"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771459497-g2ad251/amp-darwin-arm64"
      sha256 "34e4877e275642e426ec132505be662c1e4dedb371aaaa94e72e1334e4261873"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771459497-g2ad251/amp-darwin-x64"
      sha256 "1019791af6d7b40d483b4b1d41a8a5db2c404c6f5dd454d2ba71875917cff42a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771459497-g2ad251/amp-linux-arm64"
      sha256 "93c92b8c82a15eea2691c1508e80f2247b5b7ae70701ccf06937afa4adb712e5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771459497-g2ad251/amp-linux-x64"
      sha256 "bb77170e4db9a9b43e746844f9d6daf3db139799fc5bb20f99b787f5d77ca491"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
