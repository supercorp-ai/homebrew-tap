# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.4.tgz"
      sha256 "5a8d060ebf8f5a643168ba1451f302da46cff0d03fb7f0a38f6d914ee7890f67"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.4.tgz"
      sha256 "c267423b7335997bfe6e2aba04a41b01b995b8468cb8c9dfa0a5dd2de999336e"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.4.tgz"
      sha256 "4823c8657afd8652ce617d1f2bacc3afbd43f34de60453c4141b5a02c6513a66"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.4.tgz"
      sha256 "f4f55ea007244f6eb2a8772237fdfe2b4bec1c92d05286f434d262065c9389f3"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
