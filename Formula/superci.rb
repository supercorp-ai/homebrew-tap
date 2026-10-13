# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.1.tgz"
      sha256 "76c3fb5913b2c3bb49246aa6b293662822c17b604f69610078d62a55efe4b5df"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.1.tgz"
      sha256 "63e48e2232785dbd77e3739bd686bb1f3148af44a9d93d8c4dba2a8d9d16ca69"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.1.tgz"
      sha256 "1112037e71ebe4228710a189f3348dba9279e38dc813279f2f31d5e9f35c2e39"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.1.tgz"
      sha256 "73e38893f34f7689b585f3ca5c37c6de469319266c6f6fea06dd7899e5f596e4"
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
