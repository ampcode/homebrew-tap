class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772150683-gfc19f4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772150683-gfc19f4/amp-darwin-arm64"
      sha256 "e0317f7dd2452064c41645d0a95c19fad81a3b88a32477297b1c2ba1a0db3100"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772150683-gfc19f4/amp-darwin-x64"
      sha256 "b9460f76ece1b679c54adadcd5901fe4f28a4da46247ef540357073e71b3c625"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772150683-gfc19f4/amp-linux-arm64"
      sha256 "6d0b3cf40ebcb3223748b2cb26ec2689beb10434dab0f6b8d0a68411616b2851"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772150683-gfc19f4/amp-linux-x64"
      sha256 "cc8679481a1fc3ca350a4f509750174d2f7f548dc8a886651ab30ebd4c3d67ad"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
