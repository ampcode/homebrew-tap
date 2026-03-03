class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772539445-g1b0f88"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772539445-g1b0f88/amp-darwin-arm64"
      sha256 "caac26a01b13106ca433319fed90451b6536d66ea8be05485ce2404aa8ca62f0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772539445-g1b0f88/amp-darwin-x64"
      sha256 "afef94b381b7458d4c6bdc72ecd1c677e2fe46473a4534bc64839ab0a7c06beb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772539445-g1b0f88/amp-linux-arm64"
      sha256 "dc2bb95064db25803144d1f317e88c689aa65b54407b6d713d1c8ec04bcb99bf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772539445-g1b0f88/amp-linux-x64"
      sha256 "48e6e2f6071e1455df62df1904ec29060afa2eafc9d85af2c193852a74d5235a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
